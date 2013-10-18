.class public final enum Lcom/google/a/d/ac;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/d/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/d/ac;

.field public static final enum b:Lcom/google/a/d/ac;

.field public static final enum c:Lcom/google/a/d/ac;

.field private static final synthetic d:[Lcom/google/a/d/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/google/a/d/ac;

    const-string/jumbo v1, "S2_LINEAR_PROJECTION"

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    new-instance v0, Lcom/google/a/d/ac;

    const-string/jumbo v1, "S2_TAN_PROJECTION"

    invoke-direct {v0, v1, v3}, Lcom/google/a/d/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    new-instance v0, Lcom/google/a/d/ac;

    const-string/jumbo v1, "S2_QUADRATIC_PROJECTION"

    invoke-direct {v0, v1, v4}, Lcom/google/a/d/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/a/d/ac;->d:[Lcom/google/a/d/ac;

    return-void
.end method

.method private strictfp constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static strictfp valueOf(Ljava/lang/String;)Lcom/google/a/d/ac;
    .locals 1
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/google/a/d/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/ac;

    return-object v0
.end method

.method public static strictfp values()[Lcom/google/a/d/ac;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/a/d/ac;->d:[Lcom/google/a/d/ac;

    invoke-virtual {v0}, [Lcom/google/a/d/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/d/ac;

    return-object v0
.end method
