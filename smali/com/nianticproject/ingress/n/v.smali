.class final Lcom/nianticproject/ingress/n/v;
.super Lcom/nianticproject/ingress/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/b/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/n/s;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/n/s;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/nianticproject/ingress/n/v;->a:Lcom/nianticproject/ingress/n/s;

    invoke-direct {p0}, Lcom/nianticproject/ingress/b/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/n/s;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/n/v;-><init>(Lcom/nianticproject/ingress/n/s;)V

    return-void
.end method

.method private static j()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->c()Landroid/accounts/Account;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/loggedin/requestActivationCode?emailAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/u/b;->b()Lcom/nianticproject/ingress/shared/rpc/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/z;->a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;)Ljava/io/InputStream;

    .line 415
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/nianticproject/ingress/n/v;->j()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/n/v;->a:Lcom/nianticproject/ingress/n/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/s;->a(Lcom/nianticproject/ingress/n/s;)Lcom/nianticproject/ingress/n/ab;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->x:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/n/v;->a:Lcom/nianticproject/ingress/n/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/s;->a(Lcom/nianticproject/ingress/n/s;)Lcom/nianticproject/ingress/n/ab;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->y:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_0
.end method
