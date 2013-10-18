.class final Lcom/google/c/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/google/c/a/a/a/a;


# direct methods
.method private constructor <init>(Lcom/google/c/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/a/a/a/d;->a:Lcom/google/c/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/a/a/a/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/a/a/a/d;-><init>(Lcom/google/c/a/a/a/a;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lcom/google/c/a/a/a/d;->a:Lcom/google/c/a/a/a/a;

    invoke-static {v0}, Lcom/google/c/a/a/a/a;->a(Lcom/google/c/a/a/a/a;)Lcom/google/c/a/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/c/a/a/a/e;->a(Lcom/google/c/a/a/a/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/google/c/a/a/a/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/a/a/e;->a(Lcom/google/c/a/a/a/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
