.class public Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/plext/a;


# instance fields
.field private final aliensScore:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final plain:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final resistanceScore:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->plain:Ljava/lang/String;

    .line 80
    iput-wide v1, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->resistanceScore:J

    .line 81
    iput-wide v1, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->aliensScore:J

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->plain:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->resistanceScore:J

    .line 40
    iput-wide p4, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->aliensScore:J

    .line 41
    return-void
.end method

.method public static a(JJ)Lcom/nianticproject/ingress/shared/plext/c;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v6, Lcom/nianticproject/ingress/shared/plext/c;

    sget-object v7, Lcom/nianticproject/ingress/shared/plext/d;->h:Lcom/nianticproject/ingress/shared/plext/d;

    new-instance v0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;

    invoke-static {p0, p1, p2, p3}, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->b(JJ)Ljava/lang/String;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v6, v7, v0}, Lcom/nianticproject/ingress/shared/plext/c;-><init>(Lcom/nianticproject/ingress/shared/plext/d;Lcom/nianticproject/ingress/shared/plext/a;)V

    return-object v6
.end method

.method private static b(JJ)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 58
    const-string/jumbo v0, "%s %s - %s %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "%s %s - %s %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->resistanceScore:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->aliensScore:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->resistanceScore:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->aliensScore:J

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->b(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
