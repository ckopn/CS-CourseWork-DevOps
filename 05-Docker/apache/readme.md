```bash
# build
> docker build -t devops/httpd -f httpd.Dockerfile .
> docker run -it -v $(pwd):/shared -p "8080:8080" devops/httpd
```

На старті виведеться кілька дебаг повідомлень  (що наразі в кроні і список процесів), потім запуститься апач.

P.S.
з кроном походу треба чаклувати - не зрозуміло тільки чому він не працює.
