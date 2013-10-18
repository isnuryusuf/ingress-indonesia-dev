.class public final Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/AccessLevel;


# static fields
.field private static final SUCCESS:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;


# instance fields
.field private final failure:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final requiredLevel:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;-><init>(ZI)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->SUCCESS:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->requiredLevel:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->failure:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->requiredLevel:I

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;-><init>(ZI)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->failure:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    .line 34
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    const-string/jumbo v0, "requiredLevel: %s, failure: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->requiredLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->failure:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usage(I)Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->requiredLevel:I

    if-ge p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->failure:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/SimpleAccessLevel;->SUCCESS:Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    goto :goto_0
.end method
