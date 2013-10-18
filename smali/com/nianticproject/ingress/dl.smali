.class final Lcom/nianticproject/ingress/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/dj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/dj;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/nianticproject/ingress/dl;->a:Lcom/nianticproject/ingress/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/dl;->a:Lcom/nianticproject/ingress/dj;

    invoke-static {v0}, Lcom/nianticproject/ingress/dj;->b(Lcom/nianticproject/ingress/dj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/dl;->a:Lcom/nianticproject/ingress/dj;

    invoke-static {v0}, Lcom/nianticproject/ingress/dj;->a(Lcom/nianticproject/ingress/dj;)Lcom/nianticproject/ingress/n/s;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Lcom/nianticproject/ingress/service/i;)V

    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/dl;->a:Lcom/nianticproject/ingress/dj;

    invoke-static {v0}, Lcom/nianticproject/ingress/dj;->c(Lcom/nianticproject/ingress/dj;)Lcom/nianticproject/ingress/connectivity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/dl;->a:Lcom/nianticproject/ingress/dj;

    invoke-static {v1}, Lcom/nianticproject/ingress/dj;->a(Lcom/nianticproject/ingress/dj;)Lcom/nianticproject/ingress/n/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/connectivity/a;->a(Lcom/nianticproject/ingress/connectivity/b;)Z

    .line 232
    iget-object v0, p0, Lcom/nianticproject/ingress/dl;->a:Lcom/nianticproject/ingress/dj;

    invoke-static {v0}, Lcom/nianticproject/ingress/dj;->a(Lcom/nianticproject/ingress/dj;)Lcom/nianticproject/ingress/n/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/s;->m()V

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/dl;->a:Lcom/nianticproject/ingress/dj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/dj;->a(Lcom/nianticproject/ingress/dj;Z)Z

    .line 235
    :cond_0
    return-void
.end method
