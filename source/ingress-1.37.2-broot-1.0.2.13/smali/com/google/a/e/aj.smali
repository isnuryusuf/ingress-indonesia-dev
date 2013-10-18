.class abstract enum Lcom/google/a/e/aj;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/e/ai;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/e/aj;",
        ">;",
        "Lcom/google/a/e/ai;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/e/aj;

.field public static final enum b:Lcom/google/a/e/aj;

.field private static final c:Lsun/misc/Unsafe;

.field private static final d:I

.field private static final synthetic e:[Lcom/google/a/e/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    new-instance v0, Lcom/google/a/e/ak;

    const-string/jumbo v1, "UNSAFE_LITTLE_ENDIAN"

    invoke-direct {v0, v1}, Lcom/google/a/e/ak;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/aj;->a:Lcom/google/a/e/aj;

    .line 127
    new-instance v0, Lcom/google/a/e/al;

    const-string/jumbo v1, "UNSAFE_BIG_ENDIAN"

    invoke-direct {v0, v1}, Lcom/google/a/e/al;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/aj;->b:Lcom/google/a/e/aj;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/e/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/e/aj;->a:Lcom/google/a/e/aj;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/a/e/aj;->b:Lcom/google/a/e/aj;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/a/e/aj;->e:[Lcom/google/a/e/aj;

    .line 184
    invoke-static {}, Lcom/google/a/e/aj;->c()Lsun/misc/Unsafe;

    move-result-object v0

    .line 185
    sput-object v0, Lcom/google/a/e/aj;->c:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/google/a/e/aj;->d:I

    .line 188
    sget-object v0, Lcom/google/a/e/aj;->c:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 189
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/a/e/aj;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/google/a/e/aj;->d:I

    return v0
.end method

.method static synthetic b()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/a/e/aj;->c:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private static c()Lsun/misc/Unsafe;
    .locals 3

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/a/e/am;

    invoke-direct {v0}, Lcom/google/a/e/am;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/e/aj;
    .locals 1
    .parameter

    .prologue
    .line 114
    const-class v0, Lcom/google/a/e/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/e/aj;

    return-object v0
.end method

.method public static values()[Lcom/google/a/e/aj;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/a/e/aj;->e:[Lcom/google/a/e/aj;

    invoke-virtual {v0}, [Lcom/google/a/e/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/e/aj;

    return-object v0
.end method
