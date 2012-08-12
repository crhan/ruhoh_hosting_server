# 试用本服务四步走

## 第一步

设定你的主页地址到你的目标域名: 比如本人的 [blog.crhan.com][4]

![][1]

## 第二步

添加 [http://linode.crhan.com:3000/ruhoh][5] 到 [WebHooks][]

![][2]

## 第三步

添加目标域名的 A 记录到 `173.255.218.208`, AAAA 记录到 `2600:3c01::f03c:91ff:feae:6ad0`

## 第四步

推送一个更新到仓库或者直接点测试

![][3]

[WebHooks]: https://help.github.com/articles/post-receive-hooks
[1]: https://raw.github.com/crhan/ruhoh_hosting_server/2bb6499978a8db472ab7684e45d8fc949fa65bb2/public/add_homepage.png
[2]: https://raw.github.com/crhan/ruhoh_hosting_server/2bb6499978a8db472ab7684e45d8fc949fa65bb2/public/add_hook.png
[3]: https://raw.github.com/crhan/ruhoh_hosting_server/2bb6499978a8db472ab7684e45d8fc949fa65bb2/public/test_hook.png
[4]: blog.crhan.com
[5]: http://linode.crhan.com:3000/ruhoh

----

# Four Steps to Try This Free Ruhoh Hosting Service

## First

Make repo's homepage to the target domain name of your blog. For myself,
it is [blog.crhan.com][]

![][1]

## Second

Adding [WebHooks][] http://linode.crhan.com:3000/ruhoh to your repo

![][2]

## Third

Point your domain's A record to `173.255.218.208`, and AAAA record `2600:3c01::f03c:91ff:feae:6ad0` (only if you want to support ipv6)

## Last

Make a webhook test or make a push action to your repo.

![][3]

