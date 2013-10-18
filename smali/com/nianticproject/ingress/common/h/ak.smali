.class final Lcom/nianticproject/ingress/common/h/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/g/e;

.field private final b:Lcom/nianticproject/ingress/shared/model/e;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/model/e;Lcom/nianticproject/ingress/common/g/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/ak;->b:Lcom/nianticproject/ingress/shared/model/e;

    .line 26
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/ak;->a:Lcom/nianticproject/ingress/common/g/e;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ak;->a:Lcom/nianticproject/ingress/common/g/e;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ak;->a:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ak;->b:Lcom/nianticproject/ingress/shared/model/e;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "updateGameStateTask"

    return-object v0
.end method
