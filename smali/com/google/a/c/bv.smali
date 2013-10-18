.class final enum Lcom/google/a/c/bv;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/c/bv;",
        ">;",
        "Lcom/google/a/c/fg",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/c/bv;

.field private static final synthetic b:[Lcom/google/a/c/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/a/c/bv;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/a/c/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/bv;->a:Lcom/google/a/c/bv;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/a/c/bv;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/c/bv;->a:Lcom/google/a/c/bv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/c/bv;->b:[Lcom/google/a/c/bv;

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
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/c/bv;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/google/a/c/bv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/bv;

    return-object v0
.end method

.method public static values()[Lcom/google/a/c/bv;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/a/c/bv;->b:[Lcom/google/a/c/bv;

    invoke-virtual {v0}, [Lcom/google/a/c/bv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/bv;

    return-object v0
.end method
