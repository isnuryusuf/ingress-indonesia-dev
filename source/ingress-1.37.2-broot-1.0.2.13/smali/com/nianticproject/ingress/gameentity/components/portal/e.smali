.class final Lcom/nianticproject/ingress/gameentity/components/portal/e;
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
        "Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    .line 46
    invoke-direct {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b()V

    .line 47
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 50
    :goto_0
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    #getter for: Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    invoke-static {v1}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->access$100(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    #getter for: Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->access$100(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 51
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/e;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    #getter for: Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->access$100(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    aget-object v0, v0, v1

    .line 66
    invoke-direct {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b()V

    .line 67
    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->b:I

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/e;->a:Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;

    #getter for: Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    invoke-static {v1}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->access$100(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/e;->a()Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
