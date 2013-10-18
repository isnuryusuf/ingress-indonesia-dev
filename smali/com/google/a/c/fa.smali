.class public abstract enum Lcom/google/a/c/fa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/c/fa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/c/fa;

.field public static final enum b:Lcom/google/a/c/fa;

.field public static final enum c:Lcom/google/a/c/fa;

.field public static final enum d:Lcom/google/a/c/fa;

.field public static final enum e:Lcom/google/a/c/fa;

.field private static final synthetic f:[Lcom/google/a/c/fa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 734
    new-instance v0, Lcom/google/a/c/fb;

    const-string/jumbo v1, "EXPLICIT"

    invoke-direct {v0, v1}, Lcom/google/a/c/fb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fa;->a:Lcom/google/a/c/fa;

    .line 747
    new-instance v0, Lcom/google/a/c/fc;

    const-string/jumbo v1, "REPLACED"

    invoke-direct {v0, v1}, Lcom/google/a/c/fc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fa;->b:Lcom/google/a/c/fa;

    .line 758
    new-instance v0, Lcom/google/a/c/fd;

    const-string/jumbo v1, "COLLECTED"

    invoke-direct {v0, v1}, Lcom/google/a/c/fd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    .line 769
    new-instance v0, Lcom/google/a/c/fe;

    const-string/jumbo v1, "EXPIRED"

    invoke-direct {v0, v1}, Lcom/google/a/c/fe;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fa;->d:Lcom/google/a/c/fa;

    .line 780
    new-instance v0, Lcom/google/a/c/ff;

    const-string/jumbo v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/google/a/c/ff;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fa;->e:Lcom/google/a/c/fa;

    .line 728
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/a/c/fa;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/c/fa;->a:Lcom/google/a/c/fa;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/c/fa;->b:Lcom/google/a/c/fa;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/a/c/fa;->d:Lcom/google/a/c/fa;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/a/c/fa;->e:Lcom/google/a/c/fa;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/c/fa;->f:[Lcom/google/a/c/fa;

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
    .line 729
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 729
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/fa;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/c/fa;
    .locals 1
    .parameter

    .prologue
    .line 728
    const-class v0, Lcom/google/a/c/fa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/fa;

    return-object v0
.end method

.method public static values()[Lcom/google/a/c/fa;
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lcom/google/a/c/fa;->f:[Lcom/google/a/c/fa;

    invoke-virtual {v0}, [Lcom/google/a/c/fa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/fa;

    return-object v0
.end method
