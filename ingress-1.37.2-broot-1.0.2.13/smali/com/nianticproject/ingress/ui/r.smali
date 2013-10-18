.class public final Lcom/nianticproject/ingress/ui/r;
.super Landroid/support/v4/d/a;
.source "SourceFile"


# instance fields
.field private final j:Z

.field private k:I

.field private l:Z

.field private final m:Ljava/text/SimpleDateFormat;

.field private final n:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/support/v4/d/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "h:mma"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/r;->m:Ljava/text/SimpleDateFormat;

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMM dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/r;->n:Ljava/text/SimpleDateFormat;

    .line 77
    iput-boolean p3, p0, Lcom/nianticproject/ingress/ui/r;->j:Z

    .line 78
    iput p4, p0, Lcom/nianticproject/ingress/ui/r;->k:I

    .line 79
    iput-boolean p5, p0, Lcom/nianticproject/ingress/ui/r;->l:Z

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 199
    :try_start_0
    const-string/jumbo v1, "CommsAdapter.newView"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 202
    new-instance v1, Lcom/nianticproject/ingress/ui/s;

    iget-boolean v3, p0, Lcom/nianticproject/ingress/ui/r;->j:Z

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/ui/s;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const-string/jumbo v3, "coda.ttf"

    invoke-static {p1, v1, v3}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lcom/nianticproject/ingress/ui/r;->k:I

    if-eq v0, p1, :cond_0

    .line 97
    iput p1, p0, Lcom/nianticproject/ingress/ui/r;->k:I

    .line 98
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/r;->notifyDataSetChanged()V

    .line 100
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 135
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/r;->l:Z

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    const-string/jumbo v1, "CommsAdapter.bindView"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 141
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/r;->j:Z

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 143
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    .line 146
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/plext/f;->a(I)Lcom/nianticproject/ingress/shared/plext/f;

    move-result-object v4

    .line 149
    const/4 v1, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 150
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nianticproject/ingress/ui/s;

    move-object v8, v0

    .line 152
    iget-object v1, v8, Lcom/nianticproject/ingress/ui/s;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    check-cast p3, Lcom/nianticproject/ingress/content/f;

    invoke-virtual/range {p3 .. p3}, Lcom/nianticproject/ingress/content/f;->a()Ljava/util/List;

    move-result-object v3

    .line 155
    new-instance v7, Lcom/nianticproject/ingress/ui/ab;

    invoke-direct {v7}, Lcom/nianticproject/ingress/ui/ab;-><init>()V

    .line 156
    iget v1, p0, Lcom/nianticproject/ingress/ui/r;->k:I

    sget v12, Lcom/nianticproject/ingress/ak;->c:I

    if-eq v1, v12, :cond_2

    .line 157
    :goto_1
    iget-object v1, v8, Lcom/nianticproject/ingress/ui/s;->b:Landroid/widget/TextView;

    invoke-static/range {v1 .. v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Lcom/nianticproject/ingress/shared/plext/f;IZLcom/nianticproject/ingress/ui/ab;)V

    .line 163
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/r;->j:Z

    if-nez v1, :cond_3

    iget-boolean v1, v7, Lcom/nianticproject/ingress/ui/ab;->a:Z

    if-eqz v1, :cond_3

    .line 164
    const v2, 0x7f070011

    .line 165
    const v1, 0x7f020069

    .line 170
    :goto_2
    iget-object v3, v8, Lcom/nianticproject/ingress/ui/s;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v2, v8, Lcom/nianticproject/ingress/ui/s;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 173
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-nez v1, :cond_4

    .line 174
    iget-object v1, v8, Lcom/nianticproject/ingress/ui/s;->a:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    :cond_2
    move v6, v9

    .line 156
    goto :goto_1

    .line 167
    :cond_3
    const v1, 0x7f07000d

    move v2, v1

    move v1, v9

    .line 168
    goto :goto_2

    .line 177
    :cond_4
    :try_start_1
    const-string/jumbo v1, "CommsAdapter#bindView::timestamp"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 181
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 182
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 183
    iget-object v1, v8, Lcom/nianticproject/ingress/ui/s;->a:Landroid/widget/TextView;

    invoke-static {}, La;->ar()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 192
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    .line 185
    :cond_5
    :try_start_3
    iget-object v1, v8, Lcom/nianticproject/ingress/ui/s;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/r;->n:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 188
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/r;->l:Z

    if-ne v0, p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/nianticproject/ingress/ui/r;->l:Z

    .line 92
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/r;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/support/v4/d/a;->getCount()I

    move-result v0

    .line 213
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/r;->j:Z

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 216
    :cond_0
    return v0
.end method
