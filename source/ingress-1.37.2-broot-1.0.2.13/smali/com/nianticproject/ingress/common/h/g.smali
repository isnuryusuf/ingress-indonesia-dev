.class public Lcom/nianticproject/ingress/common/h/g;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/shared/rpc/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/u/q;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 31
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/g;->a:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/nianticproject/ingress/common/h/g;->b:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/m;",
            ">;",
            "Lcom/nianticproject/ingress/shared/rpc/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/g;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/g;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/u/ag;->a(Ljava/util/List;Ljava/util/List;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/m;->b:Lcom/nianticproject/ingress/shared/rpc/m;

    return-object v0
.end method
