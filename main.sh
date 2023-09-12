# CRIANDO O BD
use Pharmacy

# Criando uma coleção para employees
db.employees.insertOne({
     "_id": 1,
     "name": "Lucas Cardoso",
     "cargo": "Atendente"
})

db.employees.updateOne(
    {"name": "Lucas Cardoso"},
    {
        $set: {
            "salary": "R$ 1.500,00",
            "start_date": "03-09-2021",
            "contact":{
                "email": "lucas@email.com",
                "phone": "(81) 99955-4433"
            }
        }
    }
)

db.employees.insertMany([
    {"_id": 2,
    "name":"Júlia Sampaio",
    "cargo":"Farmaceutico",
    "salary": "R$ 3.000,00",
    "start_date": "15-05-2022",
    "contact":{
                "email": "julia@email.com",
                "phone": "(81) 99655-4433"
            }
    },
    {"_id": 3,
    "name":"Joana Bezerra",
    "cargo":"Caixa",
    "salary": "R$ 1.200,00",
    "start_date": "25-06-2022",
    "contact":{
                "email": "joana@email.com",
                "phone": "(81) 99755-4433"
            }},

    {"_id": 4,
    "name":"João Machado",
    "cargo":"Farmaceutico",
    "salary": "R$ 3.000,00",
    "start_date": "17-02-2023",
    "contact":{
                "email": "joao@email.com",
                "phone": "(81) 99855-4433"
            }}
])

# Criando uma coleção para medicamentos


db.medications.insertMany([
     {
        "_id": 1,
        "name": "Aspirina",
        "functions": ["Analgésico", "Anti-inflamatório"],
        "price": 5.99,
        "stock": 100
    },

    {
        "_id": 2,
        "name": "Paracetamol",
        "functions": ["Analgésico", "Antipirético"],
        "price": 4.49,
        "stock": 150
    },

    {
        "_id": 3,
        "name": "Ibuprofeno",
        "functions": ["Analgésico", "Anti-inflamatório", "Antipirético"],
        "price": 6.49,
        "stock": 200
    },
    {
        "_id": 4,
        "name": "Dramin",
        "functions": ["Anti-emético", "Anti-vertiginoso"],
        "price": 12.99,
        "stock": 48
    },
    {
        "_id": 5,
        "name": "Cetamina",
        "functions": ["Anestésico", "Alucinógeno"],
        "price": 18.99,
        "stock": 25
    },
    {
        "_id": 6,
        "name": "Amoxicilina",
        "functions": ["Antibiótico"],
        "price": 7.99,
        "stock": 75
    },
    {
        "_id": 7,
        "name": "Omeprazol",
        "functions": ["Antiácido", "Inibidor da bomba de prótons"],
        "price": 9.99,
        "stock": 120
    },
    {
        "_id": 8,
        "name": "Ranitidina",
        "functions": ["Antiácido", "Antihistamínico"],
        "price": 6.29,
        "stock": 90
    },
    {
        "_id": 9,
        "name": "Morfina",
        "functions": ["Analgésico", "Opiáceo"],
        "price": 15.99,
        "stock": 30
    },
    {
        "_id": 10,
        "name": "Losartana",
        "functions": ["Anti-hipertensivo"],
        "price": 8.49,
        "stock": 60
    },
    {
        "_id": 11,
        "name": "Oxigênio",
        "functions": ["Suplemento respiratório"],
        "price": 29.99,
        "stock": 1000
    },
    {
        "_id": 12,
        "name": "Insulina",
        "functions": ["Antidiabético"],
        "price": 12.79,
        "stock": 50
    },
    {
        "_id": 13,
        "name": "Metrformina",
        "functions": ["Antidiabético"],
        "price": 5.99,
        "stock": 80
    },
    {
        "_id": 14,
        "name": "Atorvastatina",
        "functions": ["Hipolipemiante"],
        "price": 7.99,
        "stock": 70
    },
    {
        "_id": 15,
        "name": "Dexametasona",
        "functions": ["Anti-inflamatório", "Imunossupressor"],
        "price": 10.49,
        "stock": 40
    },
    {
        "_id": 16,
        "name": "Salbutamol",
        "functions": ["Broncodilatador"],
        "price": 3.99,
        "stock": 120
    },
    {
        "_id": 17,
        "name": "Hidroclorotiazida",
        "functions": ["Diurético", "Anti-hipertensivo"],
        "price": 6.99,
        "stock": 55
    }
])

# Criando uma coleção para produtos diversos
db.products.insertOne({
    "_id": 1,
    "name": "Máscara Facial",
    "category": "Higiene Pessoal",
    "price": 1.99,
    "stock": 500
})

db.products.insertMany([
    {
    "_id": 2,
    "name": "Whey Protein",
    "category": "Suplemento",
    "price": 200,
    "stock": 700
    },
    {
    "_id": 3,
    "name": "Sabonete Antibacteriano",
    "category": "Higiene Pessoal",
    "price": 2.99,
    "stock": 300
    }
])


# Criando uma coleção para clientes
db.customers.insertOne({
    "_id": 1,
    "name": "João Silva",
    "contact": {
        "email": "joao@example.com",
        "phone": "+1-345-678-9012"
    },
    "address": {
        "street": "Rua das Flores, 123",
        "city": "Recife",
        "state": "PE",
        "zip_code": "50000-000"
    }
})

db.customers.insertMany([
    {
        "_id": 2,
        "name": "Maria Santos",
        "contact": {
            "email": "maria@example.com",
            "phone": "+1-456-789-0123"
        },
        "address": {
            "street": "Avenida Brasil, 456",
            "city": "Recife",
            "state": "PE",
            "zip_code": "50000-001"
        }
    },
    {
        "_id": 3,
        "name": "Carlos Oliveira",
        "contact": {
            "email": "carlos@example.com",
            "phone": "+1-567-890-1234"
        },
        "address": {
            "street": "Rua das Palmeiras, 789",
            "city": "Recife",
            "state": "PE",
            "zip_code": "50000-002"
        }
    },
    {
        "_id": 4,
        "name": "Ana Pereira",
        "contact": {
            "email": "ana@example.com",
            "phone": "+1-678-901-2345"
        },
        "address": {
            "street": "Avenida Recife, 012",
            "city": "Recife",
            "state": "PE",
            "zip_code": "50000-003"
        }
    },
    {
        "_id": 5,
        "name":"Júlia Sampaio",
        "contact":{
                    "email": "julia@email.com",
                    "phone": "(81) 99655-4433"
                },
        "address":{
            "street": "Rua do Espinheiro",
            "city": "Recife",
            "state": "PE",
            "zip_code": "52222-222"
        }
    },
    {   "_id": 6,
        "name":"Joana Bezerra",
        "contact":{
                "email": "joana@email.com",
                "phone": "(81) 99755-4433"
            },
        "address": {
            "street": "Av. Visconde de Albuquerque",
            "city": "Recife",
            "state": "PE",
            "zip_code": "50000-000"
        }
    }
    
])


# RENAMECOLLECTION
# Renomear a coleção "employees" para "employees"
db.employees.renameCollection('professionals')

# Operações de Consulta
# Consultar todos os profissionais e usar o PRETTY
db.professionals.find().pretty()

# Consultar medicamentos com estoque maior que 100
db.medications.find({ "stock": { $gt: 100 } })

# Consultar produtos de higiene pessoal
db.products.find({ "category": "Higiene Pessoal" })

# Consultar medicamentos por nome
db.medications.find({ "name": "Aspirina" })

# Consultar profissionais por especialidade
db.professionals.find({ "cargo": "Caixa" })


# Operações de Atualização
# Atualizar o preço da Aspirina
db.medications.updateOne({ "name": "Aspirina" }, { $set: { "price": 6.49 } })

# Atualizar o estoque de produtos diversos
db.products.updateMany({ "category": "Higiene Pessoal" }, { $inc: { "stock": 100 } })


#  Operações de Agregação
# Calcular a média de preços de medicamentos
db.medications.aggregate([
    {
        $group: {
            _id: null,
            averagePrice: { $avg: "$price" }
        }
    }
])

# Calcular o total de estoque de produtos diversos por categoria
db.products.aggregate([
    {
        $group: {
            _id: "$category",
            totalStock: { $sum: "$stock" }
        }
    }
])


# Operações de Exclusão
# Excluir um profissional
db.professionals.deleteOne({ "_id": 1 })

# Excluir todos os produtos de higiene pessoal
db.products.deleteMany({ "category": "Higiene Pessoal" })


# Operador $sort
# Ordenar medicamentos por preço em ordem decrescente
db.medications.find().sort({ "price": -1 })


# Operador $match
# Consultar medicamentos com preço superior a $5
db.medications.aggregate([
    {
        $match: {
            "price": { $gte: 5 }
        }
    }
])


# Operador $max
# Definir o preço máximo para o medicamento "Paracetamol" (não vai alterar o preço, pois já é menor)
db.medications.updateOne(
    { "name": "Paracetamol" },
    { $max: { "price": 4.99 } }
)


# Operador $all
# Consultar medicamentos que são analgésicos e antipiréticos
db.medications.find({ functions: { $all: ["Analgésico", "Antipirético"]}})


# Operador $filter
# Adicionar informações sobre fabricantes de medicamentos
db.medications.updateOne(
    { "name": "Aspirina" },
    {
        $set: {
            "manufacturer_info": {
                "name": "PharmaCorp",
                "location": "New York"
            }
        }
    }
)

# $WHERE
# Consultar medicamentos com preço superior a $5 usando $where
db.medications.find({ $where: "this.price > 5" })


# $TEXT e $SEARCH
# Criar um índice de texto no campo "name" da coleção "medications"
db.medications.createIndex({ "name": "text" })

# Realizar uma pesquisa de texto para encontrar medicamentos que contenham a palavra "Aspirina"
db.medications.find({ $text: { $search: "Aspirina" } })

# $FILTER
# Consultar medicamentos com preço superior a $5 e filtrar os resultados
db.medications.aggregate([
    {
        $match: {
            "functions": "Broncodilatador"
        }
    },
    {
        $project: {
            "filteredFunctions": {
                $filter: {
                    input: "$functions",
                    as: "func",
                    cond: { $eq: ["$$func", "Broncodilatador"] }
                }
            }
        }
    }
])

# $SAVE
# Adicionar informações sobre um novo medicamento usando save (inserção)
db.medications.save({
    "_id": 18,
    "name": "Loratadina",
    "functions": ["Antialérgico", "Antihistamínico"],
    "price": 4.99,
    "stock":85
})

# $SIZE
# Consultar medicamentos que possuem 3 funcionalidades com $size
db.medications.find({ "functions": { $size:3}})

# $EXISTS
# Consultar medicamentos que têm a funcao definida usando $exists
db.medications.find({ "functions": { $exists:true}})

# LIMIT
# Limitar a consulta para retornar apenas os 5 primeiros medicamentos
db.medications.find().limit(5)

# FINDONE
# Encontrar um único medicamento com preço inferior a $5 usando findOne
db.medications.findOne({ "price": { $lt: 5 } })

# ADDTOSET
# Adicionar um novo medicamento com um campo "tags" usando $addToSet
db.medications.updateOne(
  { "name": "Novo Medicamento" },
  {
    $addToSet: {
      "tags": "Nova Tag"
    }
  },
  { upsert: true }
)

# LOOKUP
# Exemplo de uso do $lookup para realizar uma junção entre as coleções "customers" e "professionals"
db.customers.aggregate([
  {
    $lookup:
      {
        from: "professionals",
        localField: "name",
        foreignField: "name",
        as: "employee_and_customer"
      }
  }
]).pretty()

# MAPREDUCE e FUNCTION
# Exemplo de uso do $mapReduce para contar a quantidade de medicamentos com preços superiores a $5
db.medications.mapReduce(
  function() { emit("Medicamentos com preço > $5", 1); },
  function(key, values) { return Array.sum(values); },
  {
    query: { price: { $gt: 5 } },
    out: "medications_count_greater_than_5"
  }
)

# COUNT COUNT
# Contar o número total de medicamentos na coleção "medications"
db.medications.count()