.class final Lcom/nianticproject/ingress/common/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/r;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/nianticproject/ingress/common/t;->a:Lcom/nianticproject/ingress/common/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 232
    new-instance v0, Lcom/nianticproject/ingress/common/g/z;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/t;->a:Lcom/nianticproject/ingress/common/r;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/r;->a(Lcom/nianticproject/ingress/common/r;)Lcom/nianticproject/ingress/common/g/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/g/z;-><init>(Ljava/util/Collection;)V

    .line 234
    iget-object v1, p0, Lcom/nianticproject/ingress/common/t;->a:Lcom/nianticproject/ingress/common/r;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/r;->b(Lcom/nianticproject/ingress/common/r;)Lcom/nianticproject/ingress/common/g/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/g/c;->a(Lcom/nianticproject/ingress/common/g/h;)V

    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t;->a:Lcom/nianticproject/ingress/common/r;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/r;->b(Lcom/nianticproject/ingress/common/r;)Lcom/nianticproject/ingress/common/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/c;->e()V

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string/jumbo v0, "triggerGameStateQuery"

    return-object v0
.end method
