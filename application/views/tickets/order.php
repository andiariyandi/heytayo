<form action="<?php echo base_url().'tickets/order'?>">
      <div class="col-md-12">
        <div class="row">
          <h2>Schedule</h2>
          <table class="table table-striped table-bordered">
            <thead>
              <tr>
                <th>Origin</th>
                <th>Destination</th>
 
                <th>Depature Date</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td> 
                <div class="form-group">
                  <select class="form-control" name="sel1">
                      <option value = 'lampung' >Lampung  </option>
                      <option value = 'palembang'>Palembang</option>
                      <option value = 'jambi'>Jambi</option>
                  </select>
                  </div>
                  </td>
                  
                <td>
                <div class="form-group">
                  <select class="form-control" name="sel2">
                      <option value = 'lampung'>Lampung</option>
                      <option value = 'palembang'>Palembang</option>
                      <option value = 'jambi'>Jambi</option>
                  </select>
                  </div>
                </td>

                <td>  <input type="date" name="depature_date" min=
                        <?php echo date('Y-m-d');  ?>
                      >
                </td>
                <td><button type="submit" name="Submit" value="Submit" class="btn btn-info btn-xs">Check</button></td>
              </tr>

            </tbody>
          </table>
        </div>
      </div>
      </form>