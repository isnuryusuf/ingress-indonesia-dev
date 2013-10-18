.class final Lcom/nianticproject/ingress/common/l/b;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/shared/GameScore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/l/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/l/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/nianticproject/ingress/common/l/b;->a:Lcom/nianticproject/ingress/common/l/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 232
    check-cast p1, Lcom/nianticproject/ingress/shared/GameScore;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/l/b;->a:Lcom/nianticproject/ingress/common/l/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/l/a;->c(Lcom/nianticproject/ingress/common/l/a;)Lcom/nianticproject/ingress/common/l/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/l/d;->a(Lcom/nianticproject/ingress/shared/GameScore;)V

    const/4 v0, 0x0

    return-object v0
.end method
