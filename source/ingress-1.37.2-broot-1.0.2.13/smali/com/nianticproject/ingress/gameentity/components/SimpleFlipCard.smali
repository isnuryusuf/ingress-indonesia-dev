.class public Lcom/nianticproject/ingress/gameentity/components/SimpleFlipCard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/FlipCard;


# instance fields
.field private flipCardType:Lcom/nianticproject/ingress/gameentity/components/c;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/c;->a:Lcom/nianticproject/ingress/gameentity/components/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFlipCard;->flipCardType:Lcom/nianticproject/ingress/gameentity/components/c;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/components/c;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFlipCard;->flipCardType:Lcom/nianticproject/ingress/gameentity/components/c;

    .line 21
    return-void
.end method


# virtual methods
.method public getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFlipCard;->flipCardType:Lcom/nianticproject/ingress/gameentity/components/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-string/jumbo v0, "flipCardType: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFlipCard;->flipCardType:Lcom/nianticproject/ingress/gameentity/components/c;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
