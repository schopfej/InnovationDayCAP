// module.exports = srv => {
//     srv.on('READ', 'Participants', async (req, next) => {
//         const items = await next()
//         return items.filter(item => item.email == "stephan.haenggi@be.ch")
//     })
// }

//const { part } = cds.entities('Participants')

// module.exports = srv => {
//     srv.on('READ', 'Participants', async (req, next) => {
       
//         console.log("req.req.user: " + req.req.user);

//         const items = await next()
//         return items.filter(item => item.email == req.req.user.id)
//     })

// }
const cds = require('@sap/cds')
   module.exports = function (){
       // Register your event handlers in here, for example, ...
       this.after ('READ','Participants', each => {
           if (each.email == 'stefan@tester.sap.com' ) {
               each.lastName += '--> ACHTUNG';
           }
       })
    }
