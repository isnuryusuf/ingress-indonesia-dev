.class final enum Lcom/google/a/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/a/d;

.field public static final enum b:Lcom/google/a/a/d;

.field public static final enum c:Lcom/google/a/a/d;

.field public static final enum d:Lcom/google/a/a/d;

.field private static final synthetic e:[Lcom/google/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/a/a/d;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/d;->a:Lcom/google/a/a/d;

    new-instance v0, Lcom/google/a/a/d;

    const-string/jumbo v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/google/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/d;->b:Lcom/google/a/a/d;

    new-instance v0, Lcom/google/a/a/d;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/d;->c:Lcom/google/a/a/d;

    new-instance v0, Lcom/google/a/a/d;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/d;->d:Lcom/google/a/a/d;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/a/a/d;

    sget-object v1, Lcom/google/a/a/d;->a:Lcom/google/a/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/a/d;->b:Lcom/google/a/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/a/d;->c:Lcom/google/a/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/a/d;->d:Lcom/google/a/a/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/a/a/d;->e:[Lcom/google/a/a/d;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/a/d;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/d;

    return-object v0
.end method

.method public static values()[Lcom/google/a/a/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/a/a/d;->e:[Lcom/google/a/a/d;

    invoke-virtual {v0}, [Lcom/google/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/a/d;

    return-object v0
.end method
