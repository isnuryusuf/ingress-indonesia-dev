.class public final Lcom/nianticproject/ingress/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/nianticproject/ingress/ac;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/ac;-><init>(B)V

    invoke-static {}, Lcom/nianticproject/ingress/ab;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/ac;->a(Ljava/lang/Boolean;)Lcom/nianticproject/ingress/ac;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/ac;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->d(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->e(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->f(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->g(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->h(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->i(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->j(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->k(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->l(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ac;->m(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ac;->a()Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 30
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 31
    if-eqz v1, :cond_1

    const-string/jumbo v2, "test-keys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/app/Superuser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 45
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
