.class public final Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;
.implements Lcom/nianticproject/ingress/gameentity/components/LocationE6;
.implements Lcom/nianticproject/ingress/gameentity/f;


# instance fields
.field private final cellId:Lcom/google/a/d/j;

.field private final guid:Ljava/lang/String;

.field private final latLng:Lcom/google/a/d/u;

.field private quantity:I

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->guid:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/nianticproject/ingress/shared/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->quantity:I

    .line 35
    new-instance v0, Lcom/google/a/d/j;

    invoke-static {p1}, Lcom/nianticproject/ingress/shared/g;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->cellId:Lcom/google/a/d/j;

    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->cellId:Lcom/google/a/d/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/b/b;->a(Lcom/google/a/d/j;)Lcom/google/a/d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->latLng:Lcom/google/a/d/u;

    .line 37
    iput-wide p2, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->timestamp:J

    .line 38
    return-void
.end method


# virtual methods
.method public final add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/DynamicComponent;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot add components"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final computeCovering()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getComponentsAsMap()Lcom/google/a/c/cr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/cr",
            "<",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot get components as map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 0

    .prologue
    .line 127
    return-object p0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndexCell()Lcom/google/a/d/j;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->cellId:Lcom/google/a/d/j;

    return-object v0
.end method

.method public final getIndexPoint()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->latLng:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final getIndexRegion()Lcom/google/a/d/ad;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/google/a/d/i;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->cellId:Lcom/google/a/d/j;

    invoke-direct {v0, v1}, Lcom/google/a/d/i;-><init>(Lcom/google/a/d/j;)V

    return-object v0
.end method

.method public final getLastModifiedMs()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->timestamp:J

    return-wide v0
.end method

.method public final getLatE6()I
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->latLng:Lcom/google/a/d/u;

    invoke-virtual {v0}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final getLatLng()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->latLng:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final getLngE6()I
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->latLng:Lcom/google/a/d/u;

    invoke-virtual {v0}, Lcom/google/a/d/u;->f()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final getTotal()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->quantity:I

    return v0
.end method

.method public final remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/DynamicComponent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot remove components"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    if-eq p1, p0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set Entity other than original"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method public final setLastModifiedMs(J)V
    .locals 2
    .parameter

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "cannot set modification time"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setTotal(I)V
    .locals 2
    .parameter

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set energy glob total other than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput p1, p0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->quantity:I

    .line 116
    return-void
.end method
