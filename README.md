<h2>Requirements</h2>
    <p>- Laravel 7</p>
    <p>- MySQL 8.0</p>
    <p>- PHP >= 7.4</p>
<h2>Installation for local develop</h2>
<p>Setup docker .env</p>
<pre>
    <code>
    cp .env.docker .env
    </code>
    <pre>
    ...
    NGINX_HOST_PORT=80 (change if it used)
    MYSQL_HOST_POST=3306 (change if it used)
    CLIENT_HOST_PORT=3000 (change if it used)
    DB_PORT=3306 (change if it used)
    DB_DATABASE=romu
    DB_ROOT_USER=root
    DB_ROOT_PASSWORD=root
    ...
    </pre>
</pre>

<p>Setup API env</p>
<pre>
    <code>
    cd api
    cp .env.example .env
    vi .env
    </code>
</pre>
<p>Change env file</p>
<pre>
    ...
    DB_CONNECTION=mysql                                        
    DB_HOST=mysql                                              
    DB_PORT=3306 (change if it used)            
    DB_DATABASE=romu_dev        
    DB_USERNAME=root   
    DB_PASSWORD=root 
    ...
</pre>

<p>Setup Client env</p>
<pre>
    <code>
    cd client
    cp .env.example .env
    vi .env
    </code>
</pre>
<p>Change env file</p>
<pre>
    ...
    BASE_SSR_API_URL= http://nginx/ (Base URL for Server Axios)
    BASE_API_URL= http://localhost (Base URL for Client Axios)
    PASSPORT_PASSWORD_GRANT_ID =
    PASSPORT_PASSWORD_GRANT_SECRET =
    ...
</pre>

<p>Build and run container</p>
<pre>
    <code>
    docker-compose build
    docker-compose up -d
    </code>
</pre>

<p>Install vendor laravel</p>
<pre>
    <code>
    docker-compose run --rm composer install
    </code>
</pre>

<p>Generate key and migrate</p>
<pre>
    <code>
    docker-compose exec api php artisan key:generate
    docker-compose exec api php artisan migrate
    </code>
</pre>
