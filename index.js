const soap = require('soap')

const url = './vatservice.asmx'

const args = {
  username: 'anonymous',
  password: 'anonymous',
  TIN: '0125543004205',
  Name: '',
  ProvinceCode: '0',
  BranchNumber: '0',
  AmphurCode: '0',
}

soap.createClient(url, { disableCache: true }, (err, client) => {
  client.setSecurity(new soap.ClientSSLSecurity(
    undefined,
    undefined,
    undefined,
    { strictSSL: false },
  ))
  client.Service(args, (err, result) => {
    if (err) {
      console.log(err)      
    } else {
      console.log(result)
      console.log(JSON.stringify(result, {}, 2))
    }
  })
})