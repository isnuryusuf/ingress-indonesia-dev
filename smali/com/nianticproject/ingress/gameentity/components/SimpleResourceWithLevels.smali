.class public final Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;
.implements Lcom/nianticproject/ingress/shared/s;


# static fields
.field public static final ALLOWED_SIMPLE_RESOURCE_WITH_LEVELS:Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private transient dirty:Z

.field private final level:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final resourceType:Lcom/nianticproject/ingress/shared/af;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->j:Lcom/nianticproject/ingress/shared/af;

    sget-object v4, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/a/c/du;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->ALLOWED_SIMPLE_RESOURCE_WITH_LEVELS:Lcom/google/a/c/du;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->resourceType:Lcom/nianticproject/ingress/shared/af;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->level:I

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/af;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p2}, Lcom/nianticproject/ingress/gameentity/components/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "level should be >= 1 and <= 8: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->ALLOWED_SIMPLE_RESOURCE_WITH_LEVELS:Lcom/google/a/c/du;

    invoke-virtual {v0, p1}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal SimpleResourceWithLevels type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->level:I

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->resourceType:Lcom/nianticproject/ingress/shared/af;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->dirty:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->level:I

    return v0
.end method

.method public final getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRarity()Lcom/nianticproject/ingress/gameentity/components/l;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->a:Lcom/nianticproject/ingress/gameentity/components/l;

    return-object v0
.end method

.method public final getResourceType()Lcom/nianticproject/ingress/shared/af;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->resourceType:Lcom/nianticproject/ingress/shared/af;

    return-object v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->dirty:Z

    return v0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->dirty:Z

    .line 92
    return-void
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    const-string/jumbo v1, "Type: \'%s\' Level: %d%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->resourceType:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ", [dirty]"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
