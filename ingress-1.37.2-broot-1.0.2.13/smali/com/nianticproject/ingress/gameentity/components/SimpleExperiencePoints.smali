.class public Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/ExperiencePoints;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->total:I

    .line 24
    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->dirty:Z

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->checkPositive(I)V

    .line 29
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->total:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->dirty:Z

    .line 31
    return-void
.end method

.method private checkPositive(I)V
    .locals 2
    .parameter

    .prologue
    .line 64
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Value cannot be negative."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTotal()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->total:I

    return v0
.end method

.method public incrementBy(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->checkPositive(I)V

    .line 60
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->total:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->setTotal(I)V

    .line 61
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->dirty:Z

    return v0
.end method

.method public setClean()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->dirty:Z

    .line 55
    return-void
.end method

.method public setTotal(I)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->checkPositive(I)V

    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->total:I

    if-eq v0, p1, :cond_0

    .line 42
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->total:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->dirty:Z

    .line 45
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "XP: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleExperiencePoints;->dirty:Z

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
