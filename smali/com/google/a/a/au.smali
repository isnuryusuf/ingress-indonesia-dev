.class abstract enum Lcom/google/a/a/au;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/a/au;",
        ">;",
        "Lcom/google/a/a/ao",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/a/au;

.field public static final enum b:Lcom/google/a/a/au;

.field public static final enum c:Lcom/google/a/a/au;

.field public static final enum d:Lcom/google/a/a/au;

.field private static final synthetic e:[Lcom/google/a/a/au;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 276
    new-instance v0, Lcom/google/a/a/av;

    const-string/jumbo v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1}, Lcom/google/a/a/av;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/au;->a:Lcom/google/a/a/au;

    .line 281
    new-instance v0, Lcom/google/a/a/aw;

    const-string/jumbo v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1}, Lcom/google/a/a/aw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/au;->b:Lcom/google/a/a/au;

    .line 286
    new-instance v0, Lcom/google/a/a/ax;

    const-string/jumbo v1, "IS_NULL"

    invoke-direct {v0, v1}, Lcom/google/a/a/ax;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/au;->c:Lcom/google/a/a/au;

    .line 291
    new-instance v0, Lcom/google/a/a/ay;

    const-string/jumbo v1, "NOT_NULL"

    invoke-direct {v0, v1}, Lcom/google/a/a/ay;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/au;->d:Lcom/google/a/a/au;

    .line 275
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/a/a/au;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/a/au;->a:Lcom/google/a/a/au;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/a/au;->b:Lcom/google/a/a/au;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/a/a/au;->c:Lcom/google/a/a/au;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/a/a/au;->d:Lcom/google/a/a/au;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/a/au;->e:[Lcom/google/a/a/au;

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
    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/google/a/a/au;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/a/au;
    .locals 1
    .parameter

    .prologue
    .line 275
    const-class v0, Lcom/google/a/a/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/au;

    return-object v0
.end method

.method public static values()[Lcom/google/a/a/au;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/google/a/a/au;->e:[Lcom/google/a/a/au;

    invoke-virtual {v0}, [Lcom/google/a/a/au;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/a/au;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/a/a/ao;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/a/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 299
    return-object p0
.end method
