FROM php:7.1-fpm
RUN apt-get update && apt-get install -y git wget libssl-dev zlib1g-dev libicu-dev g++ make cmake libuv-dev libgmp-dev uuid-dev libpng12-dev libmemcached-dev libcurl4-openssl-dev pkg-config libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libmemcachedutil2 libz-dev libmemcached11 libpq-dev

RUN apt-get update && apt-get install -y \
	libmemcached11 \
	libmemcachedutil2 \
	libmemcached-dev \
	libz-dev \
	git \
	&& cd /root \
	&& git clone -b php7 https://github.com/php-memcached-dev/php-memcached \
	&& cd php-memcached \
	&& phpize \
	&& ./configure \
	&& make \
	&& make install \
	&& cd .. \
	&& rm -rf  php-memcached \
	&& echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini \
	&& apt-get remove -y build-essential libmemcached-dev libz-dev \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& apt-get clean \
	# part 2 - installing pecl modules
	&& pecl install mongodb-1.4.3 \
	&& docker-php-ext-enable mongodb \
 	&& pecl install redis-4.0.2 \
	&& docker-php-ext-enable redis \
	&& pecl install xdebug-2.6.0 \
	&& docker-php-ext-enable xdebug \
	&& pecl install igbinary-2.0.6 \
	&& docker-php-ext-enable igbinary \
	&& pecl install msgpack-2.0.2 \
	&& docker-php-ext-enable msgpack \
	# part 3 - opcache
	&& docker-php-ext-install opcache \
	&& { \
	echo 'opcache.memory_consumption=128'; \
	echo 'opcache.interned_strings_buffer=8'; \
	echo 'opcache.max_accelerated_files=4000'; \
	echo 'opcache.revalidate_freq=60'; \
	echo 'opcache.fast_shutdown=1'; \
	echo 'opcache.enable_cli=1'; \
	} > /usr/local/etc/php/conf.d/opcache-recommended.ini \
	# part 4 - extensions
	&& docker-php-ext-install \
	mbstring \
	pdo pdo_mysql pdo_pgsql \
	pcntl \
	sockets \
	bcmath \
	mysqli \
	gettext \
	zip \
	# part 5 - GD lib
	&& docker-php-ext-configure gd \
		--with-freetype-dir=/usr/lib/x86_64-linux-gnu/ \
		--with-jpeg-dir=/usr/lib/x86_64-linux-gnu/ \
	&& docker-php-ext-install gd \
	# part 6 - cassandra module
	&& git clone https://github.com/datastax/php-driver.git /usr/src/datastax-php-driver && \
	cd /usr/src/datastax-php-driver && \
	git submodule update --init && \
	cd ext && ./install.sh \
	&& echo extension=cassandra.so > /usr/local/etc/php/conf.d/cassandra.ini \
	& cd .. \
	&& rm -rf /usr/src/datastax-php-driver \
	# part 7 composer
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/bin/composer

	# part 8 - clean up.
RUN docker-php-source delete

COPY php.ini /usr/local/etc/php/conf.d/settings.ini
COPY php-cacert.pem /usr/lib/ssl/cert.pem
COPY php-fpm-www.conf /usr/local/etc/php-fpm.d/www.conf
