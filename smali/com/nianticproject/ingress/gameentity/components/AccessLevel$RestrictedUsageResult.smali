.class public final Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isAllowed:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final requiredLevel:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->isAllowed:Z

    .line 86
    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->requiredLevel:I

    .line 87
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->isAllowed:Z

    .line 59
    iput p2, p0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->requiredLevel:I

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->isAllowed:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const-string/jumbo v0, "isAllowed: %s, requiredLevel: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->isAllowed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->requiredLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
