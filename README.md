## Pitest

Reportes generados

![](assets/pit.png)

![](assets/pit2.png)

## MDROID+

### GNU_CASH

---

#### Aplicación Original

|Tipo de Prueba     |Cantidad de pruebas codificadas|Cantidad de pruebas que pasan|
|--|--|--|
|Interfaz Gráfica   |37|35|
|Unitaria           |137|137|

Las pruebas de UI no son estables la aplicacion 

**Random Testing:** Para todas las instancias del `apk` de GNU Cash se va a realizar una prueba de random testing usando el comando base del monkey de Android `./adb shell monkey -p org.gnucash.android -v 1000000`. La ejecucuión sobre la aplicación original no logro detener la ejecución de la aplicación o encontrar errores.

**Mutantes:** Se usaron todos los operadores de mutación excepto el 23. El comando para generar los mutantes fue

`java -jar target/MDroidPlus-1.0.0.jar libs4ast/ /Users/Documents/programs/gnucash-android/app/src/main/ gnucash tmp/mutants/ . true`

![](assets/mutants.png)

---

#### Aplicación con Mutante 1

`Mutant 57: /Users/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/transaction/TransactionsListFragment.java; InvalidKeyIntentPutExtra in line 174`

`intent.putExtra("83480a2e5ec74d43a247cee205dc7275", mAccountUID);`

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35|28|
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica detectaron y eliminaron al mutante.

![](assets/gnucash-ui-m1-1.png)

**Random Testing:** El random Testing detecto el mutante.

![](assets/gnucash-ui-m1-2.png)

---

#### Aplicación con Mutante 2

`Mutant 144: /Users/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/db/BookDbHelper.java; InvalidFilePath in line 169`

`src = new File("a6a7563e784d4fd1abd446792b381b04");`

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35|35|
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---

#### Aplicación con Mutante 3

`Mutant 184: /Users/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/account/AccountFormFragment.java; BuggyGUIListener in line 307`

`mColorSquare.setOnClickListener(null);  		return view;`

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---

#### Aplicación con Mutante 4

`Mutant 232: /Users/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/homescreen/WidgetConfigurationActivity.java; LengthyGUICreation in line 85`

```java
@Override
        public void onCreate(Bundle savedInstanceState) {
 try {
Thread.sleep(10000);
} catch (InterruptedException e) {
e.printStackTrace();
}
```

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---

#### Aplicación con Mutante 5

`Mutant 854: /Users/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/common/BaseDrawerActivity.java; NullIntent in line 247`

`Intent intent = null;`

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---

#### Aplicación con Mutante 6

`Mutant 249: /Users/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/model/BudgetAmount.java; NotParcelable in line 1`

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137||

**NACIDO MUERTO**

```java
ArrayList<BudgetAmount> budgetAmounts = getArguments().getParcelableArrayList(UxArgument.BUDGET_AMOUNT_LIST);
```

![](assets/gnucash-ui-m6-1.png)

---

#### Aplicación con Mutante 7

`Mutant 264: /Users/diegoprietotorres/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/report/sheet/BalanceSheetFragment.java; FindViewByIdReturnsNull in line 157`

```java
TextView accountBalance = (TextView) null;
```

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---

#### Aplicación con Mutante 8

`Mutant 295: /Users/diegoprietotorres/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/export/ExportFormFragment.java; InvalidDate in line 383`

```java
final Date date = new Date(-649205281027L);
```

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---

#### Aplicación con Mutante 9

`Mutant 395: /Users/diegoprietotorres/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/budget/BudgetListFragment.java; DifferentActivityIntentDefinition in line 177`

```java
Intent addAccountIntent = new Intent(getActivity(),org.gnucash.android.ui.transaction.TransactionsActivity.class);
```

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---

#### Aplicación con Mutante 10

`Mutant 454: /Users/diegoprietotorres/Documents/programs/gnucash-android/app/src/main/java/org/gnucash/android/ui/settings/GeneralPreferenceFragment.java; NullValueIntentPutExtra in line 87`

```java
passIntent.putExtra(UxArgument.DISABLE_PASSCODE,new android.os.Parcelable[0]);
```

|Tipo de Prueba     |Cantidad de pruebas originales que pasan|Cantidad de pruebas que pasan con la mutación|
|--|--|--|
|Interfaz Gráfica   |35||
|Unitaria           |137|137|

**Pruebas de Unitarias:** Las pruebas unitarias no detectaron el mutante.

**Pruebas de Interfaz Gráfica:** Las pruebas de interfaz gráfica no detectaron el mutante.

**Random Testing:** El random Testing también detecto el mutante

---
## Striker
Se ejecuta el ejemplo robobar, y para la mutacion se ejecuta dos veces stryker para ver la cantidad
de mutantes generados.
Link repositorio: https://github.com/angelaanaya2309/taller_8

![](assets/Striker-1.png)

![](assets/Striker-2.png)

En la primera ejecución se generaron 126 mutantes el 58.73% fueron detectados. Podemos ver el
en el informe el detalle.

![](assets/Striker-3.png)

![](assets/Striker-4.png)

![](assets/Striker-5.png)

![](assets/Striker-6.png)

![](assets/Striker-7.png)

![](assets/Striker-8.png)

En la segunda ejecución se generaron 126 mutantes el 28.8% fueron detectados. Podemos ver el
en el informe el detalle.
Se realizaron algunos cambios en la configuración de stryker mostradas en el archivo de
configuración:

![](assets/Striker-9.png)

![](assets/Striker-10.png)

![](assets/Striker-11.png)

![](assets/Striker-12.png)

![](assets/Striker-13.png)

![](assets/Striker-14.png)


---
## MutAPK
Es una herramienta para la generacion de mutantes usando APK
Este es el proceso de instalacion
```
git clone https://github.com/TheSoftwareDesignLab/MutAPK.git
cd MutAPK
mvn clean
mvn package
```
Parametros que se pueden usar

* APK path: directorio del apk
* AppPackage: ruta al packete principal de la app
* Output: directorio donde se van a crear los mutantes
* ExtraCompFolder: ruta a componentes extra (MutAPK/extra/);
* operatorsDir: archivo que contiene los posibles operadores operators.properties.
* multithread : true or false habilita o no el uso de concurrencia
* amountOfMutants : selecciona numero de mutantes a ejecutar

Para correr el programa usando el Jar generado
```
java -jar MutAPK-0.0.1.jar <APKPath> <AppPackage> <Output> <ExtraComponentFolder> <operatorsDir> <multithread> <amountMutants>?
```
Para los operadores que utiliza se pueden editar en el siguiente archivo `operators.properties`

La salida del programa nos da :
Para la prueba en el codigo esta los datos generados para Kouchat
* Apk del programa mutado (normal , signed , y archivo manifest de android)
* Log de ejecucion 
* representacion PFP formato JSON
* Reporte de tiempo del programa (csv con tiempos para cada mutante)

Para ejecutar las pruebas se corrio el siguiente comando , al principio se generao porblemas con el archivo hay que crear la carpeta mutans a mano
```
java -jar target\\MutAPK-0.0.1.jar .\\KouChat-1.1.1.apk net.usikkert.kouchat .\\mutants\\ .\\extra\\ . false 50
```




