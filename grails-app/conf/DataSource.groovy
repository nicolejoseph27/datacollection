dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "grails"
    password = "server"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost:3306/magnet?autoreconnect=true"
			 pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "nicolejoseph"
        }
    }
    test {
        dataSource {
            url = "jdbc:mysql://localhost:3306/magnet_test?zeroDateTimeBehavior=convertToNull"
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "tombrown"
            password = "1@wr3nc3"
            loggingSql = false
        }
		properties {
			maxActive = 50
			maxIdle = 25
			minIdle = 5
			initialSize = 5
			minEvictableIdleTimeMillis = 3600000  // 1 hour
			timeBetweenEvictionRunsMillis = 300000 // 5 minutes
			numTestsPerEvictionRun = 5
			maxWait = 10000
        }
    }
    production {
        dataSource {
             url = "jdbc:mysql://localhost:3306/magnet?zeroDateTimeBehavior=convertToNull"
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "tombrown"
            password = "1@wr3nc3"
            loggingSql = false
        }
		properties {
			maxActive = 50
			maxIdle = 25
			minIdle = 5
			initialSize = 5
			minEvictableIdleTimeMillis = 3600000  // 1 hour
			timeBetweenEvictionRunsMillis = 300000 // 5 minutes
			numTestsPerEvictionRun = 5
			maxWait = 10000
		}
    }
}
