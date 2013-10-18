.class abstract enum Lcom/google/a/e/ag;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/e/ai;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/e/ag;",
        ">;",
        "Lcom/google/a/e/ai;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/e/ag;

.field private static final synthetic b:[Lcom/google/a/e/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/google/a/e/ah;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/a/e/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/ag;->a:Lcom/google/a/e/ag;

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/a/e/ag;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/e/ag;->a:Lcom/google/a/e/ag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/e/ag;->b:[Lcom/google/a/e/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/google/a/e/ag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/e/ag;
    .locals 1
    .parameter

    .prologue
    .line 197
    const-class v0, Lcom/google/a/e/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/e/ag;

    return-object v0
.end method

.method public static values()[Lcom/google/a/e/ag;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/google/a/e/ag;->b:[Lcom/google/a/e/ag;

    invoke-virtual {v0}, [Lcom/google/a/e/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/e/ag;

    return-object v0
.end method
