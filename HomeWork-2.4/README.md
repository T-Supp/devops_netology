## Домашнее задание к занятию «2.4. Инструменты Git»
### Вопросы:

*1. Найдите полный хеш и комментарий коммита, хеш которого начинается на aefea.*

*2. Какому тегу соответствует коммит 85024d3?*

*3. Сколько родителей у коммита b8d720? Напишите их хеши.*

*4. Перечислите хеши и комментарии всех коммитов которые были сделаны между тегами v0.12.23 и v0.12.24.*

*5. Найдите коммит в котором была создана функция func providerSource, ее определение в коде выглядит так func providerSource(...) (вместо троеточего перечислены аргументы).*

*6. Найдите все коммиты в которых была изменена функция globalPluginDirs.*

*7. Кто автор функции synchronizedWriters?*

### Ответы:

1. git show aefea

```
    commit aefead2207ef7e2aa5dc81a34aedf0cad4c32545               
    Author: Alisdair McDiarmid <alisdair@users.noreply.github.com>
    Date:   Thu Jun 18 10:29:58 2020 -0400 


    Update CHANGELOG.md
```

2. git show 85024d3

```
    commit 85024d3100126de36331c6982bfaac02cdab9e76 (tag: v0.12.23)
    Author: tf-release-bot <terraform@hashicorp.com>
    Date:   Thu Mar 5 20:56:10 2020 +0000
```

3. git checkout b8d720
    git show HEAD^ 

```
    commit 56cd7859e05c36c06b56d013b55a252d0bb7e158
    Merge: 58dcac4b7 ffbcf5581
    Author: Chris Griggs <cgriggs@hashicorp.com>
    Date:   Mon Jan 13 13:19:09 2020 -0800
```

4. git log --pretty=format:"%H %s" v0.12.23..v0.12.24

```
    33ff1c03bb960b332be3af2e333462dde88b279e v0.12.24
    b14b74c4939dcab573326f4e3ee2a62e23e12f89 [Website] vmc provider links
    3f235065b9347a758efadc92295b540ee0a5e26e Update CHANGELOG.md
    6ae64e247b332925b872447e9ce869657281c2bf registry: Fix panic when server is unreachable
    5c619ca1baf2e21a155fcdb4c264cc9e24a2a353 website: Remove links to the getting started guide's old location
    06275647e2b53d97d4f0a19a0fec11f6d69820b5 Update CHANGELOG.md
    d5f9411f5108260320064349b757f55c09bc4b80 command: Fix bug when using terraform login on Windows
    4b6d06cc5dcb78af637bbb19c198faff37a066ed Update CHANGELOG.md
    dd01a35078f040ca984cdd349f18d0b67e486c35 Update CHANGELOG.md
    225466bc3e5f35baa5d07197bbc079345b77525e Cleanup after v0.12.23 release
```

5. git log -S “func providerSource(” --pretty=format:"%h, %an, %ad, %s"

```
    8c928e835, Martin Atkins, Thu Apr 2 18:04:39 2020 -0700, main: Consult local directories as potential mirrors of providers
```

6. git log -S "globalPluginDirs" --pretty=format:"%h, %an, %ad, %s"         

``` 
    35a058fb3, Martin Atkins, Thu Oct 19 17:40:20 2017 -0700, main: configure credentials from the CLI config file
    c0b176109, James Bardin, Mon Jun 12 15:04:40 2017 -0400, prevent log output during init
    8364383c3, Martin Atkins, Thu Apr 13 18:05:58 2017 -0700, Push plugin discovery down into command package
```

7. git log -S 'synchronizedWriters' или git log -S 'synchronizedWriters' --pretty=
Судя по дате и описанию коммита автор Martin Atkins

```    
    James Bardin Mon Nov 30 18:02:04 2020 -0500
    James Bardin Wed Oct 21 13:06:23 2020 -0400
    Martin Atkins Wed May 3 16:25:41 2017 -0700
```