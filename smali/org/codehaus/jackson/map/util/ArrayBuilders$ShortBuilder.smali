.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[S>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic _constructArray(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->_constructArray(I)[S

    move-result-object v0

    return-object v0
.end method

.method public final _constructArray(I)[S
    .locals 1
    .parameter

    .prologue
    .line 107
    new-array v0, p1, [S

    return-object v0
.end method
