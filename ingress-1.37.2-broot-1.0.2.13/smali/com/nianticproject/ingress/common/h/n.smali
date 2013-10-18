.class public final Lcom/nianticproject/ingress/common/h/n;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/nianticproject/ingress/shared/n;",
        ">;",
        "Lcom/nianticproject/ingress/shared/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/u/q;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 30
    iput-object p3, p0, Lcom/nianticproject/ingress/common/h/n;->b:Ljava/util/Set;

    .line 31
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/n;->a:Ljava/lang/String;

    .line 32
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;",
            "Lcom/nianticproject/ingress/shared/w;",
            ">;",
            "Lcom/nianticproject/ingress/shared/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/n;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/u/ab;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/shared/w;->b:Lcom/nianticproject/ingress/shared/w;

    return-object v0
.end method
