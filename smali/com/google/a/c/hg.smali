.class abstract enum Lcom/google/a/c/hg;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/c/hg;",
        ">;",
        "Lcom/google/a/a/aa",
        "<",
        "Ljava/util/Map$Entry;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/c/hg;

.field public static final enum b:Lcom/google/a/c/hg;

.field private static final synthetic c:[Lcom/google/a/c/hg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/google/a/c/hh;

    const-string/jumbo v1, "KEY"

    invoke-direct {v0, v1}, Lcom/google/a/c/hh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/hg;->a:Lcom/google/a/c/hg;

    .line 93
    new-instance v0, Lcom/google/a/c/hi;

    const-string/jumbo v1, "VALUE"

    invoke-direct {v0, v1}, Lcom/google/a/c/hi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/hg;->b:Lcom/google/a/c/hg;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/c/hg;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/c/hg;->a:Lcom/google/a/c/hg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/c/hg;->b:Lcom/google/a/c/hg;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/c/hg;->c:[Lcom/google/a/c/hg;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/hg;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/c/hg;
    .locals 1
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/google/a/c/hg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hg;

    return-object v0
.end method

.method public static values()[Lcom/google/a/c/hg;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/google/a/c/hg;->c:[Lcom/google/a/c/hg;

    invoke-virtual {v0}, [Lcom/google/a/c/hg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/hg;

    return-object v0
.end method
