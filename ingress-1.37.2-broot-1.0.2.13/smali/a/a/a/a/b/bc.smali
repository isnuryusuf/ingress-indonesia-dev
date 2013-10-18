.class La/a/a/a/b/bc;
.super La/a/a/a/b/bf;
.source "SourceFile"


# instance fields
.field final synthetic b:La/a/a/a/b/ax;


# direct methods
.method constructor <init>(La/a/a/a/b/ax;)V
    .locals 1
    .parameter

    .prologue
    .line 1560
    iput-object p1, p0, La/a/a/a/b/bc;->b:La/a/a/a/b/ax;

    iget-object v0, p1, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-direct {p0, v0}, La/a/a/a/b/bf;-><init>(La/a/a/a/b/ap;)V

    .line 1561
    invoke-virtual {p1}, La/a/a/a/b/ax;->m()La/a/a/a/b/at;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/bc;->d:La/a/a/a/b/at;

    .line 1562
    return-void
.end method


# virtual methods
.method final c()V
    .locals 5

    .prologue
    .line 1579
    iget-object v0, p0, La/a/a/a/b/bc;->c:La/a/a/a/b/at;

    invoke-virtual {v0}, La/a/a/a/b/at;->j()La/a/a/a/b/at;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/bc;->c:La/a/a/a/b/at;

    .line 1580
    iget-object v0, p0, La/a/a/a/b/bc;->b:La/a/a/a/b/ax;

    iget-boolean v0, v0, La/a/a/a/b/ax;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/bc;->c:La/a/a/a/b/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/bc;->b:La/a/a/a/b/ax;

    iget-object v0, v0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v1, p0, La/a/a/a/b/bc;->c:La/a/a/a/b/at;

    iget-wide v1, v1, La/a/a/a/b/at;->a:J

    iget-object v3, p0, La/a/a/a/b/bc;->b:La/a/a/a/b/ax;

    iget-wide v3, v3, La/a/a/a/b/ax;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/b/bc;->c:La/a/a/a/b/at;

    .line 1581
    :cond_0
    return-void
.end method

.method final d()V
    .locals 5

    .prologue
    .line 1583
    iget-object v0, p0, La/a/a/a/b/bc;->d:La/a/a/a/b/at;

    invoke-virtual {v0}, La/a/a/a/b/at;->i()La/a/a/a/b/at;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/bc;->d:La/a/a/a/b/at;

    .line 1584
    iget-object v0, p0, La/a/a/a/b/bc;->b:La/a/a/a/b/ax;

    iget-boolean v0, v0, La/a/a/a/b/ax;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/bc;->d:La/a/a/a/b/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/bc;->b:La/a/a/a/b/ax;

    iget-object v0, v0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v1, p0, La/a/a/a/b/bc;->d:La/a/a/a/b/at;

    iget-wide v1, v1, La/a/a/a/b/at;->a:J

    iget-object v3, p0, La/a/a/a/b/bc;->b:La/a/a/a/b/ax;

    iget-wide v3, v3, La/a/a/a/b/ax;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/b/bc;->d:La/a/a/a/b/at;

    .line 1585
    :cond_0
    return-void
.end method
