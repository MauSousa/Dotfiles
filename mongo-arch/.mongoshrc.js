let cmdCount = 1;

{
   const hostnameSymbol = Symbol('hostname');
   prompt = () => {
      if (!db[hostnameSymbol])
         db[hostnameSymbol] = db.serverStatus().host;
      return `${cmdCount++})${db.getName()}@${db[hostnameSymbol]}-> `;
   };
}
