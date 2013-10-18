.class public final Lcom/google/c/a/b/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/c/a/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/c/a/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/c/a/b/f;-><init>(B)V

    sput-object v0, Lcom/google/c/a/b/e;->a:Lcom/google/c/a/b/g;

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/google/c/a/b/e;->a:Lcom/google/c/a/b/g;

    invoke-virtual {v0, p0}, Lcom/google/c/a/b/g;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/google/c/a/b/e;->a:Lcom/google/c/a/b/g;

    invoke-virtual {v0, p0, p1}, Lcom/google/c/a/b/g;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
