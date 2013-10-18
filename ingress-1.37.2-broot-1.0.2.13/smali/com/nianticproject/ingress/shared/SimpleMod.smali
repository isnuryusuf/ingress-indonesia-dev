.class public Lcom/nianticproject/ingress/shared/SimpleMod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/Mod;


# instance fields
.field private final displayName:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final installingUser:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final rarity:Lcom/nianticproject/ingress/gameentity/components/l;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final stats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/m;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final type:Lcom/nianticproject/ingress/shared/af;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->installingUser:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->stats:Ljava/util/HashMap;

    .line 104
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->a:Lcom/nianticproject/ingress/gameentity/components/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->rarity:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 105
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->displayName:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->type:Lcom/nianticproject/ingress/shared/af;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/components/ModResource;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->rarity:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 56
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->installingUser:Ljava/lang/String;

    .line 57
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getStatModifiers()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->stats:Ljava/util/HashMap;

    .line 58
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->displayName:Ljava/lang/String;

    .line 59
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->type:Lcom/nianticproject/ingress/shared/af;

    .line 60
    return-void
.end method

.method public static of(Lcom/nianticproject/ingress/shared/Mod;)Lcom/nianticproject/ingress/shared/SimpleMod;
    .locals 3
    .parameter

    .prologue
    .line 48
    instance-of v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 49
    :cond_0
    check-cast p0, Lcom/nianticproject/ingress/shared/SimpleMod;

    .line 51
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/shared/SimpleMod;

    invoke-interface {p0}, Lcom/nianticproject/ingress/shared/Mod;->buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;

    move-result-object v1

    invoke-interface {p0}, Lcom/nianticproject/ingress/shared/Mod;->getInstallingUser()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/SimpleMod;-><init>(Lcom/nianticproject/ingress/gameentity/components/ModResource;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;
    .locals 5

    .prologue
    .line 90
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/SimpleModResource;

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->type:Lcom/nianticproject/ingress/shared/af;

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->rarity:Lcom/nianticproject/ingress/gameentity/components/l;

    iget-object v4, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->stats:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/SimpleModResource;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;Ljava/util/Map;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallingUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->installingUser:Ljava/lang/String;

    return-object v0
.end method

.method public getRarity()Lcom/nianticproject/ingress/gameentity/components/l;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->rarity:Lcom/nianticproject/ingress/gameentity/components/l;

    return-object v0
.end method

.method public getResourceType()Lcom/nianticproject/ingress/shared/af;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->type:Lcom/nianticproject/ingress/shared/af;

    return-object v0
.end method

.method public getStatModifiers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/m;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->stats:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Mod: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->type:Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->rarity:Lcom/nianticproject/ingress/gameentity/components/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->stats:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/SimpleMod;->installingUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
