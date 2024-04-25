# Banco_de_dados

Nomes:
Ana Carolina Cogo Nami - 22.124.084-9<br>
Enzo Lima Cassin - 22.124.083-1

``` mermaid
erDiagram
    ALUNO ||--o{ ORDER :a
    ALUNO {
        string nome
        int id_aluno
        int ciclo
        boolean formado
    }
    ORDER ||--|{ LINE-ITEM : contains
    ORDER {
        int orderNumber
        string deliveryAddress
    }
    LINE-ITEM {
        string productCode
        int quantity
        float pricePerUnit
    }

    
  
```
