.class public abstract enum Lcom/google/a/c/an;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/c/an;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/c/an;

.field public static final enum b:Lcom/google/a/c/an;

.field private static final synthetic c:[Lcom/google/a/c/an;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/google/a/c/ao;

    const-string/jumbo v1, "OPEN"

    invoke-direct {v0, v1}, Lcom/google/a/c/ao;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    .line 40
    new-instance v0, Lcom/google/a/c/ap;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1}, Lcom/google/a/c/ap;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/c/an;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/c/an;->c:[Lcom/google/a/c/an;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/an;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Z)Lcom/google/a/c/an;
    .locals 1
    .parameter

    .prologue
    .line 51
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/c/an;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/a/c/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/an;

    return-object v0
.end method

.method public static values()[Lcom/google/a/c/an;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/a/c/an;->c:[Lcom/google/a/c/an;

    invoke-virtual {v0}, [Lcom/google/a/c/an;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/an;

    return-object v0
.end method
