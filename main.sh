# CRIANDO O BD
use Pharmacy

# Criando uma coleção para profissionais
db.professionals.insertOne({
    "_id": 1,
    "name": "Dr. Ana Silva",
    "specialty": "Cardiologia",
    "license_number": "12345",
    "contact": {
        "email": "ana@example.com",
        "phone": "+1-123-456-7890"
    }
})

# Criando uma coleção para medicamentos
db.medications.insertMany([
    {
        "_id": 1,
        "name": "Aspirina",
        "description": "Analgésico e anti-inflamatório",
        "price": 5.99,
        "stock": 100
    },
    {
        "_id": 2,
        "name": "Paracetamol",
        "description": "Analgésico e antipirético",
        "price": 4.49,
        "stock": 150
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
db.professionals.find({ "specialty": "Cardiologia" })


# Operações de Atualização
# Atualizar o preço da Aspirina
db.medications.updateOne({ "name": "Aspirina" }, { $set: { "price": 6.49 } })

# Atualizar o estoque de produtos diversos
db.products.updateMany({ "category": "Higiene Pessoal" }, { $inc: { "stock": 100 } })


# Operações de Exclusão
# Excluir um profissional
db.professionals.deleteOne({ "_id": 1 })

# Excluir todos os produtos de higiene pessoal
db.products.deleteMany({ "category": "Higiene Pessoal" })


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
db.medications.find({ "description": { $all: ["Analgésico", "Antipirético"] } })


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

# $ALL
# Consultar medicamentos que são analgésicos e antipiréticos usando $all
db.medications.find({ "description": { $all: ["Analgésico", "Antipirético"] } })

# $FILTER
# Consultar medicamentos com preço superior a $5 e filtrar os resultados
db.medications.aggregate([
    {
        $match: {
            "price": { $gt: 5 }
        }
    },
    {
        $project: {
            "name": 1,
            "description": 1,
            "price": 1,
            "filteredStock": {
                $filter: {
                    input: "$stock",
                    as: "stock",
                    cond: { $gt: ["$$stock", 100] }
                }
            }
        }
    }
])

# $SAVE
# Adicionar informações sobre um novo medicamento usando save (inserção)
db.medications.save({
    "_id": 3,
    "name": "Ibuprofeno",
    "description": "Analgésico e anti-inflamatório",
    "price": 6.99,
    "stock": 200
})

# $SIZE
# Consultar medicamentos com estoque de tamanho igual a 100 usando $size
db.medications.find({ "stock": { $size: 100 } })

# $EXISTS
# Consultar medicamentos que têm a descrição definida usando $exists
db.medications.find({ "description": { $exists: true } })

# LIMIT
# Limitar a consulta para retornar apenas os 5 primeiros medicamentos
db.medications.find().limit(5)

# FINDONE
# Encontrar um único medicamento com preço inferior a $5 usando findOne
db.medications.findOne({ "price": { $lt: 5 } })

# RENAMECOLLECTION
# Renomear a coleção "professionals" para "employees"
db.professionals.renameCollection('employees')

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
# Exemplo de uso do $lookup para realizar uma junção entre as coleções "medications" e "products"
db.medications.aggregate([
  {
    $lookup:
      {
        from: "products",
        localField: "category",
        foreignField: "category",
        as: "product_info"
      }
  }
])
