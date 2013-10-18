.class final Lcom/google/a/b/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lsun/misc/Unsafe;

.field private static final c:J


# instance fields
.field volatile a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/google/a/b/cf;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/ch;->b:Lsun/misc/Unsafe;

    .line 109
    const-class v0, Lcom/google/a/b/ch;

    .line 110
    sget-object v1, Lcom/google/a/b/ch;->b:Lsun/misc/Unsafe;

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/a/b/ch;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/a/b/ch;->a:J

    return-void
.end method


# virtual methods
.method final a(JJ)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 100
    sget-object v0, Lcom/google/a/b/ch;->b:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/a/b/ch;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
