const mysqlx = require('@mysql/xdevapi');

const config = {
    password: 'pass',
    user: 'robot',
    host: '192.168.x.x',
    port: 33060,
    schema: 'schema'
};

mysqlx.getSession(config)
	.then(session => {
		console.log(session.inspect()); // { user: 'root', host: 'localhost', port: 33060 }
		const table = session.getSchema('victims').getTable('persons');
		return table.select().execute()
		.then(result => {
			console.log(result.fetchAll());
		})
	.then(() => {
		return session.close();
	});
});
// returns the whole table
