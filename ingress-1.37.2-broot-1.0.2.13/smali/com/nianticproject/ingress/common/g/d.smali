.class public abstract Lcom/nianticproject/ingress/common/g/d;
.super Lcom/nianticproject/ingress/common/g/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/g/j",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/nianticproject/ingress/gameentity/f;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/g/d;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/g/d;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/g/e;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/j;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/d;->a:Lcom/nianticproject/ingress/common/g/e;

    .line 23
    return-void
.end method

.method private g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    const-string/jumbo v0, "InventoryObserver.doQuery"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/d;->a:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->e()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/d;->g()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
