.class public final enum Lcom/nianticproject/ingress/o/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/o/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/o/a/a;

.field public static final enum b:Lcom/nianticproject/ingress/o/a/a;

.field public static final enum c:Lcom/nianticproject/ingress/o/a/a;

.field public static final enum d:Lcom/nianticproject/ingress/o/a/a;

.field public static final enum e:Lcom/nianticproject/ingress/o/a/a;

.field public static final enum f:Lcom/nianticproject/ingress/o/a/a;

.field public static final enum g:Lcom/nianticproject/ingress/o/a/a;

.field public static final enum h:Lcom/nianticproject/ingress/o/a/a;

.field private static final synthetic k:[Lcom/nianticproject/ingress/o/a/a;


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "FORCE_LOCATION_CHECKS"

    const-string/jumbo v2, "debug.nemesis.forcelc"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->a:Lcom/nianticproject/ingress/o/a/a;

    .line 36
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "ENABLE_PARTICLE_FILTER"

    const-string/jumbo v2, "debug.nemesis.locpf"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->b:Lcom/nianticproject/ingress/o/a/a;

    .line 42
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "ENABLE_PARTICLE_FILTER_VISUALIZATION"

    const-string/jumbo v2, "debug.nemesis.locpfviz"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->c:Lcom/nianticproject/ingress/o/a/a;

    .line 47
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "ENABLE_LOCATION_LOGGING"

    const-string/jumbo v2, "debug.nemesis.loclg"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->d:Lcom/nianticproject/ingress/o/a/a;

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "LOCATION_TRACKER_MIN_UPDATE_DISTANCE"

    const-string/jumbo v2, "debug.nemesis.locudm"

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->e:Lcom/nianticproject/ingress/o/a/a;

    .line 59
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "LOCATION_TRACKER_MAX_UPDATE_LATCH_TIME"

    const-string/jumbo v2, "debug.nemesis.locult"

    const/16 v3, 0x1388

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->f:Lcom/nianticproject/ingress/o/a/a;

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "TRACER_ENABLED_STATE"

    const/4 v2, 0x6

    const-string/jumbo v3, "debug.nemesis.tracing"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->g:Lcom/nianticproject/ingress/o/a/a;

    .line 70
    new-instance v0, Lcom/nianticproject/ingress/o/a/a;

    const-string/jumbo v1, "ENABLE_TASK_LOGGING"

    const/4 v2, 0x7

    const-string/jumbo v3, "debug.nemesis.logtasks"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->h:Lcom/nianticproject/ingress/o/a/a;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nianticproject/ingress/o/a/a;

    sget-object v1, Lcom/nianticproject/ingress/o/a/a;->a:Lcom/nianticproject/ingress/o/a/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/o/a/a;->b:Lcom/nianticproject/ingress/o/a/a;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/nianticproject/ingress/o/a/a;->c:Lcom/nianticproject/ingress/o/a/a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nianticproject/ingress/o/a/a;->d:Lcom/nianticproject/ingress/o/a/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nianticproject/ingress/o/a/a;->e:Lcom/nianticproject/ingress/o/a/a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nianticproject/ingress/o/a/a;->f:Lcom/nianticproject/ingress/o/a/a;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/o/a/a;->g:Lcom/nianticproject/ingress/o/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/o/a/a;->h:Lcom/nianticproject/ingress/o/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/o/a/a;->k:[Lcom/nianticproject/ingress/o/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lcom/nianticproject/ingress/o/a/a;->i:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/nianticproject/ingress/o/a/a;->j:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/nianticproject/ingress/o/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/o/a/a;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/o/a/a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/o/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/o/a/a;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/o/a/a;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/nianticproject/ingress/o/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/o/a/a;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/o/a/a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->k:[Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/o/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/o/a/a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "TRUE"

    invoke-direct {p0}, Lcom/nianticproject/ingress/o/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/nianticproject/ingress/o/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
