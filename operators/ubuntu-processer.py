import pandas as pd
import numpy as np


def process_df(df):

    # Eliminar las columnas sin información aparente (Important, Breaks, Enhances)
    df = df.drop(['Important', 'Breaks', 'Enhances'], axis=1)

    # Eliminar filas duplicadas
    df = df.drop_duplicates()

    # Cambiar Null por NaN
    df = df.replace("Null", np.nan)

    # Nos quedamos sólo con las filas que tengan algo de información usable, para ello, primero,
    # calculamos la cantidad de valores no nulos por fila
    row_counts = df.count(axis=1)
    # Define el umbral de cantidad mínima de valores no nulos que debe tener cada fila
    threshold = 5
    # Filtra las filas que tienen menos valores no nulos que el umbral definido
    df = df[row_counts >= threshold]

    return df


def main():
    # Leer archivo CSV
    df = pd.read_csv(f"./distros/ubuntu/ubuntu-packages.csv")
    df = process_df(df)

    # # Guardar archivo CSV preprocesado
    df.to_csv(f"./operators/datawarehouse/processed-ubuntu-packages.csv",
              mode='w', index=False, header=True, chunksize=1000)


if __name__ == "__main__":
    main()
