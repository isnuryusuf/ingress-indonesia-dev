.class public final Lcom/google/e/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/c/a/a/b/c;

.field public static final b:Lcom/google/c/a/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/c/a/a/b/c;

    invoke-direct {v0}, Lcom/google/c/a/a/b/c;-><init>()V

    sput-object v0, Lcom/google/e/a/a/a/b;->a:Lcom/google/c/a/a/b/c;

    new-instance v0, Lcom/google/c/a/a/b/c;

    invoke-direct {v0}, Lcom/google/c/a/a/b/c;-><init>()V

    sput-object v0, Lcom/google/e/a/a/a/b;->b:Lcom/google/c/a/a/b/c;

    sget-object v0, Lcom/google/e/a/a/a/b;->a:Lcom/google/c/a/a/b/c;

    const/16 v1, 0x124

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/c/a/a/b/c;->a(IILjava/lang/Object;)Lcom/google/c/a/a/b/c;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/c/a/a/b/c;->a(IILjava/lang/Object;)Lcom/google/c/a/a/b/c;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/a/b/c;->a(IILjava/lang/Object;)Lcom/google/c/a/a/b/c;

    sget-object v0, Lcom/google/e/a/a/a/b;->b:Lcom/google/c/a/a/b/c;

    const/16 v1, 0x424

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/c/a/a/b/c;->a(IILjava/lang/Object;)Lcom/google/c/a/a/b/c;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/e/a/a/a/b;->a:Lcom/google/c/a/a/b/c;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/c/a/a/b/c;->a(IILjava/lang/Object;)Lcom/google/c/a/a/b/c;

    return-void
.end method
