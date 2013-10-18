.class public Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Creator;


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private final creationTime:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final creatorGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creatorGuid:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creationTime:J

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creatorGuid:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creationTime:J

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    instance-of v2, p1, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;

    if-nez v2, :cond_3

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;

    .line 81
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creatorGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creatorGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creationTime:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creationTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creationTime:J

    return-wide v0
.end method

.method public getCreatorGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creatorGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Creator;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Owner: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creatorGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Creation Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCreator;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
