.class public final Lcom/google/c/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/c/a/a/b;


# instance fields
.field private b:Lcom/google/c/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/a/a/b;

    invoke-direct {v0}, Lcom/google/c/a/a/b;-><init>()V

    sput-object v0, Lcom/google/c/a/a/b;->a:Lcom/google/c/a/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    const-string/jumbo v0, "Can\'t call gunzip without setting a GunzipInteface implementation"

    sget-object v1, Lcom/google/c/a/a/b;->a:Lcom/google/c/a/a/b;

    iget-object v1, v1, Lcom/google/c/a/a/b;->b:Lcom/google/c/a/a/c;

    invoke-static {v0, v1}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "Can\'t call gunzip with a null InputStream"

    invoke-static {v0, p0}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/c/a/a/b;->a:Lcom/google/c/a/a/b;

    iget-object v0, v0, Lcom/google/c/a/a/b;->b:Lcom/google/c/a/a/c;

    invoke-interface {v0}, Lcom/google/c/a/a/c;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
