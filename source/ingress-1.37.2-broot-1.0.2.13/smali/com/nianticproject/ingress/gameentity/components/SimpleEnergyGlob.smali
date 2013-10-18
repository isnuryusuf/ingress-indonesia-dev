.class public Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private transient dirty:Z

.field private total:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->total:I

    .line 27
    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->dirty:Z

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->total:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->dirty:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->total:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->dirty:Z

    return v0
.end method

.method public setClean()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->dirty:Z

    .line 56
    return-void
.end method

.method public setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 62
    return-void
.end method

.method public setTotal(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->total:I

    if-eq v0, p1, :cond_0

    .line 43
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->total:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->dirty:Z

    .line 46
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Glob: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEnergyGlob;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " [dirty]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
