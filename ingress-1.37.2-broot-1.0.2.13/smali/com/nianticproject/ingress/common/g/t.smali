.class final Lcom/nianticproject/ingress/common/g/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/model/GameState;

.field final synthetic b:Lcom/nianticproject/ingress/common/g/s;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/s;Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/t;->b:Lcom/nianticproject/ingress/common/g/s;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/g/t;->a:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 897
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/t;->b:Lcom/nianticproject/ingress/common/g/s;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/g/s;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/p;->a(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/t;->a:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 898
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    const-string/jumbo v0, "UpdateNewGameState"

    return-object v0
.end method
