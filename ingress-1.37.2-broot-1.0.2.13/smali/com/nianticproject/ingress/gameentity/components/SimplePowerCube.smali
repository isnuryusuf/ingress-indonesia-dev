.class public final Lcom/nianticproject/ingress/gameentity/components/SimplePowerCube;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/PowerCube;


# instance fields
.field private final energy:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePowerCube;->energy:I

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePowerCube;->energy:I

    .line 16
    return-void
.end method


# virtual methods
.method public final getEnergy()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePowerCube;->energy:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    const-string/jumbo v0, "XM: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePowerCube;->energy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
