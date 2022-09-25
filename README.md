# randomuser

Működés:
Ez az alkalmazás egy külső API-ból (https://randomuser.me) lekért adatokat tárolja és jelenít meg. Ezt PHP backenddel és React frontenddel valósítottam meg. Egy táblázat jeleníti meg az adatbázisunk tartalmát. A táblázat felett elhelyezkedő gomb segítségével újabb 10 felhasználót adhatunk hozzá az adatbázisunkhoz. Ha manuálisan a háttérben szeretnénk hozzáadni, akkor pedig az addDataToDb() függvény meghívásával lehetséges ez.

Futtatás:
- A fájlokhoz csatoltam az adatbázis táblámat (users.sql).
- Továbbá a fájlok között található "api" mappát (ez a backend fájlokat tartalmazza) a webszerver megfelelő mappájába kell másolni. Az én esetemben: C:\xampp\htdocs
- Az "api" mappán belül található DbConnect.php fájlban kell megadnunk az adatbázisunk adatait (szerver és adatbázis neve, felhasználó, jelszó).

Képernyőmentések:
![app](https://user-images.githubusercontent.com/72786848/192137267-3b699d6e-2472-4bad-ba58-d0e7d2009a55.PNG)
![db](https://user-images.githubusercontent.com/72786848/192137284-5f005f6c-0b4d-445a-a9e6-e1fe3e642f0a.PNG)
