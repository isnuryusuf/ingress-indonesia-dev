.class abstract enum Lcom/google/a/b/at;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/b/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/b/at;

.field public static final enum b:Lcom/google/a/b/at;

.field public static final enum c:Lcom/google/a/b/at;

.field private static final synthetic d:[Lcom/google/a/b/at;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Lcom/google/a/b/au;

    const-string/jumbo v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/google/a/b/au;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/at;->a:Lcom/google/a/b/at;

    .line 394
    new-instance v0, Lcom/google/a/b/av;

    const-string/jumbo v1, "SOFT"

    invoke-direct {v0, v1}, Lcom/google/a/b/av;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/at;->b:Lcom/google/a/b/at;

    .line 410
    new-instance v0, Lcom/google/a/b/aw;

    const-string/jumbo v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/google/a/b/aw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/at;->c:Lcom/google/a/b/at;

    .line 373
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/a/b/at;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/b/at;->a:Lcom/google/a/b/at;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/b/at;->b:Lcom/google/a/b/at;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/a/b/at;->c:Lcom/google/a/b/at;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/b/at;->d:[Lcom/google/a/b/at;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/at;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/b/at;
    .locals 1
    .parameter

    .prologue
    .line 373
    const-class v0, Lcom/google/a/b/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/at;

    return-object v0
.end method

.method public static values()[Lcom/google/a/b/at;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/google/a/b/at;->d:[Lcom/google/a/b/at;

    invoke-virtual {v0}, [Lcom/google/a/b/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/b/at;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lcom/google/a/b/aq;Lcom/google/a/b/ap;Ljava/lang/Object;I)Lcom/google/a/b/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/aq",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;TV;I)",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation
.end method
