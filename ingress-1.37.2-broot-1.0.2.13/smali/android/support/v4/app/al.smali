.class final Landroid/support/v4/app/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ah;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/af;)Landroid/app/Notification;
    .locals 18
    .parameter

    .prologue
    .line 113
    new-instance v1, Landroid/support/v4/app/an;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/af;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/af;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/af;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/af;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/af;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/af;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/af;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/af;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/af;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/af;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/af;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/af;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/af;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/af;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Landroid/support/v4/app/an;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ac;

    .line 119
    iget v4, v2, Landroid/support/v4/app/ac;->a:I

    iget-object v5, v2, Landroid/support/v4/app/ac;->b:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/support/v4/app/ac;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v5, v2}, Landroid/support/v4/app/an;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 121
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    if-eqz v2, :cond_1

    .line 122
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    instance-of v2, v2, Landroid/support/v4/app/ae;

    if-eqz v2, :cond_2

    .line 123
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    check-cast v2, Landroid/support/v4/app/ae;

    .line 124
    iget-object v3, v2, Landroid/support/v4/app/ae;->c:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Landroid/support/v4/app/ae;->e:Z

    iget-object v5, v2, Landroid/support/v4/app/ae;->d:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/support/v4/app/ae;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 142
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/an;->a()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    .line 128
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    instance-of v2, v2, Landroid/support/v4/app/ag;

    if-eqz v2, :cond_3

    .line 129
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    check-cast v2, Landroid/support/v4/app/ag;

    .line 130
    iget-object v3, v2, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Landroid/support/v4/app/ag;->e:Z

    iget-object v5, v2, Landroid/support/v4/app/ag;->d:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/support/v4/app/ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 134
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    instance-of v2, v2, Landroid/support/v4/app/ad;

    if-eqz v2, :cond_1

    .line 135
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    check-cast v2, Landroid/support/v4/app/ad;

    .line 136
    iget-object v3, v2, Landroid/support/v4/app/ad;->c:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Landroid/support/v4/app/ad;->e:Z

    iget-object v5, v2, Landroid/support/v4/app/ad;->d:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/support/v4/app/ad;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
