.class final Lcom/nianticproject/ingress/gameentity/components/portal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

.field private b:Lcom/nianticproject/ingress/gameentity/components/portal/e;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/d;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/portal/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/d;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/portal/e;-><init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/d;->b:Lcom/nianticproject/ingress/gameentity/components/portal/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/portal/d;-><init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/d;->b:Lcom/nianticproject/ingress/gameentity/components/portal/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/e;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/d;->b:Lcom/nianticproject/ingress/gameentity/components/portal/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/e;->a()Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
